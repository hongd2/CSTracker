module.exports = {
	'port' : process.env.PORT,
	'postgres': {
		'password' : process.env.RDS_PASSWORD,
		'host'	: process.env.RDS_HOSTNAME,
		'user'	: process.env.RDS_USERNAME,
		'port'	: process.env.RDS_PORT
	}
};
