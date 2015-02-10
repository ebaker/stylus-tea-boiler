express = require 'express'
teacup = require 'teacup/lib/express'
nib = require 'nib'

# express
app = express()

# teacup
app.set 'view engine', 'coffee'
app.engine 'coffee', teacup.renderFile

# client files
app.use express.static "#{process.cwd()}/public"
app.use express.static "#{process.cwd()}/build"
app.use '/lib', express.static("#{process.cwd()}/bower_components")

# dev livereload
app.use require('connect-livereload')({port: 35729}) if 'dev' in process.argv

# routes
app.get '/', (req, res) -> res.render 'index'

app.listen 3000
