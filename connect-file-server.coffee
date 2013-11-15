connect = Npm.require('connect')

RoutePolicy.declare('/uploads', 'network')

WebApp.connectHandlers
.use('/uploads', connect.static(process.env['APP_DYN_CONTENT_DIR']))