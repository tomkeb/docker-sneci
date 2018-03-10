
module.exports = function (grunt) {

    // Project configuration.
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),

        sass: {
		options: {
			sourceMap: false
		},
		dist: {
			files: {
				'css_vendor/lib.css': 'scss/sass.scss'
			}
		}
	},

concat_css: {
            app: {
                src: ["css/*.css"],
                dest: "../htdocs/www/css/app.css"
            },
            lib: {
                src: ["css_vendor/*.css"],
                dest: "../htdocs/www/css/lib.css"
            },
        },

        concat: {
                    dist: {
                        src: ["node_modules/jquery/dist/jquery.min.js","node_modules/popper.js/dist/umd/popper.min.js","node_modules/bootstrap/dist/js/bootstrap.min.js"],
                        dest: "../htdocs/www/js/lib.min.js"
                        // dest: "js_vendor/lib.js"
                    },
                },

        babel: {
            options: {
                "sourceMap": true,
                "presets": ['es2015-without-strict']
            },
            dist: {
                files: [{
                    "expand": true,
                    "cwd": "js",
                    "src": ["*.js"], //["**/*.js"],
                    "dest": "js/compiled/",
                    "ext": "-compiled.js"
                }]
            }
        },

        uglify: {
            options: {
                manage: false,
                beautify: false,
                preserveComments: false //'all' = > preserve all comments on JS files
            },
            my_target: {
                files: {
                    '../htdocs/www/js/app.min.js': ['js/compiled/*-compiled.js'],
                    // '../htdocs/www/js/lib.min.js': ['js_vendor/lib.js']
                }
            }
        },

        cssmin: {
            my_target: {
                files: [{
                    expand: true,
                    cwd: '../htdocs/www/css/',
                    src: ['*.css', '!*.min.css'],
                    dest: '../htdocs/www/css/',
                    ext: '.min.css'

                }]
            }
        },

        watch: {
            files: ['js/*.js', 'scss/sass.scss', 'css/custom.css'],
            tasks: 'default'
        }

    });

    require('load-grunt-tasks')(grunt);
    grunt.registerTask('default', ['concat','babel','uglify','sass','concat_css','cssmin']);
};
