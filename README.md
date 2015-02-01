Adjusted Yii2 Application Template
===================================
This is the Yii2 Advanced Template adjusted to be more convenient and usable.

You can now:

  - Run your app without any Apache2 configuration. 
You will still need mod_rewrite enabled but do not need to configure virtual 
hosts or setup multiple Document Roots.

  - You can run your app in a subdirectory of your Apache Document Root

  - Backend can be reached by going to /admin. However you will need to create 
a symbolic link by doing the following:
    cd /path/to/app
    ln -s backend/web admin

  - Pretty URLs have been enabled on front end and back end

  - Separate sessions and cookies for front end and back end, to avoid collisions


Installation
------------

### Install With Composer

The preferred way to install this extension is through [composer](http://getcomposer.org/download/).

Make sure you have this globally installed:

```
php composer.phar global require "fxp/composer-asset-plugin:1.0.0-beta4"

```
Now you can create a new project and put it into a sub-folder called advanced
```
php composer.phar create-project --prefer-dist --stability=dev stancel/yii2_advanced_template_adjusted advanced
```

Next, you need to initialize this Yii2 instance by running:

```
cd /to/your/application/path/advanced/
php yii
```

and follow the prompts to choose if you are going to setup a Development or Production instance.

Next you will go into the common/config/main-local.php file and enter your database details here:

```
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=YOUR_DB_NAME_HERE',
            'username' => 'YOUR_DB_USERNAME_HERE',
            'password' => 'YOUR_DB_PASSWORD_HERE',
            'charset' => 'utf8',
        ],
```
Once that is completed and saved, your final step is run the yii migration tool:

```
cd /to/your/application/path/yii2_advanced_template_adjusted/
php yii migrate
```

Now you can use the Gii tool to generate your a CRUD scaffolding (Models, View and Controllers) by navigating to:

```
http://localhost/yii2_advanced_template_adjusted/gii
```



Yii 2 Advanced Application Template
===================================

Yii 2 Advanced Application Template is a skeleton Yii 2 application best for
developing complex Web applications with multiple tiers.

The template includes three tiers: front end, back end, and console, each of which
is a separate Yii application.

The template is designed to work in a team development environment. It supports
deploying the application in different environments.


DIRECTORY STRUCTURE
-------------------

```
common
    config/              contains shared configurations
    mail/                contains view files for e-mails
    models/              contains model classes used in both backend and frontend
console
    config/              contains console configurations
    controllers/         contains console controllers (commands)
    migrations/          contains database migrations
    models/              contains console-specific model classes
    runtime/             contains files generated during runtime
backend
    assets/              contains application assets such as JavaScript and CSS
    config/              contains backend configurations
    controllers/         contains Web controller classes
    models/              contains backend-specific model classes
    runtime/             contains files generated during runtime
    views/               contains view files for the Web application
    web/                 contains the entry script and Web resources
frontend
    assets/              contains application assets such as JavaScript and CSS
    config/              contains frontend configurations
    controllers/         contains Web controller classes
    models/              contains frontend-specific model classes
    runtime/             contains files generated during runtime
    views/               contains view files for the Web application
    web/                 contains the entry script and Web resources
    widgets/             contains frontend widgets
vendor/                  contains dependent 3rd-party packages
environments/            contains environment-based overrides
tests                    contains various tests for the advanced application
    codeception/         contains tests developed with Codeception PHP Testing Framework
```


REQUIREMENTS
------------

The minimum requirement by this application template that your Web server supports PHP 5.4.0.


INSTALLATION
------------

### Install from an Archive File

Extract the archive file downloaded from [yiiframework.com](http://www.yiiframework.com/download/) to
a directory named `advanced` that is directly under the Web root.

Then follow the instructions given in "GETTING STARTED".


### Install via Composer

If you do not have [Composer](http://getcomposer.org/), you may install it by following the instructions
at [getcomposer.org](http://getcomposer.org/doc/00-intro.md#installation-nix).

You can then install the application using the following command:

~~~
php composer.phar global require "fxp/composer-asset-plugin:1.0.0-beta4"
php composer.phar create-project --prefer-dist --stability=dev yiisoft/yii2-app-advanced advanced
~~~


GETTING STARTED
---------------

After you install the application, you have to conduct the following steps to initialize
the installed application. You only need to do these once for all.

1. Run command `init` to initialize the application with a specific environment.
2. Create a new database and adjust the `components['db']` configuration in `common/config/main-local.php` accordingly.
3. Apply migrations with console command `yii migrate`. This will create tables needed for the application to work.
4. Set document roots of your Web server:

- for frontend `/path/to/yii-application/frontend/web/` and using the URL `http://frontend/`
- for backend `/path/to/yii-application/backend/web/` and using the URL `http://backend/`

To login into the application, you need to first sign up, with any of your email address, username and password.
Then, you can login into the application with same email address and password at any time.
