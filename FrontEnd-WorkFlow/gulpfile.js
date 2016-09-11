/******************************************************************************\
 *  Package Description:
 *
 *  Gulp:               A task/buidl runner for web development.
 *
 *  Gulp-Sass:          This compile Sass files into CSS files.
 *
 *  Gulp-Sourcempas:    Show in which sass file are the styles located for the
 *                      inspected element in the browser Inspector Tool.
 *
 *  Gulp-Autoprefixer:  Helps us to write CSS without vendor prefixes.  It will
 *                      automatically search if there is a need to add vendor
 *                      prefix for some newly CSS properties.
 *
 *  BrowserSync:        Reload a browser page after file saving, inject CSS
 *                      without reloading page, sync browser page screen and your
 *                      browsing actions through devices.
 *
\******************************************************************************/

// This are the NodeJS package dependencies
var gulp            =   require( 'gulp'              );
var sass            =   require( 'gulp-sass'         );
var sourcemaps      =   require( 'gulp-sourcemaps'   );
var browserSync     =   require( 'browser-sync'      );
var autoprefixer    =   require( 'gulp-autoprefixer' );




/******************************************************************************\
 *  The Gulp Sass Task
 *
 *  Description:    This compile Sass files into CSS files.
 *
 *  input:          The path to the Sass files
 *
 *  output:         The path to the compiled CSS file
 *
\******************************************************************************/

// For proyects:
// var input  = './scss/**/*.scss';
// var output = './css';

var input   = './button.scss';
var output  = './styles.css';

// The Gulp Sass task

gulp.task('sass', function () {
    return gulp.src(input)
        .pipe(sourcemaps.init())
        .pipe( sass().on( 'error', sass.logError ))
        .pipe( autoprefixer( {browsers: [ 'last 2 versions', '> 5%', 'Firefox ESR' ]}))
        .pipe(sourcemaps.write())
        .pipe(gulp.dest(output))
        .pipe(browserSync.stream());
});




/******************************************************************************\
 *  Watcher task
 *
 *  Description:     Watch for scss files chage and reload browser
 *
 *  domainURL        URL domain of the proyect
 *
 *  stylesheeURL    Url to the compiled stylesheet
 *
\******************************************************************************/

// Watch files for change and set Browser Sync

var domainURL      = '';
var stylesheetURL   = output;

gulp.task( 'watch', function() {
    // BrowserSync setting
    browserSync.init({
                proxy: domainURL,
                files: stylesheetURL
            });
});

// Scss file watcher

gulp.watch( input, [ 'sass' ] )
    .on( 'change', function( event ) {
        console.log( 'File ' + event.path + ' was ' + event.type + ', running tasks...' );
});




/******************************************************************************\
 *  Start task
 *
 *  Description:     The main task to run all above task.
 *
\******************************************************************************/

gulp.task( 'start', [ 'sass', 'watch' ]);
