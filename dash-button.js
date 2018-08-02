const dash_button = require('node-dash-button');
const chalk = require('chalk');

const dash = dash_button('11:22:33:44:55', null, null, 'all');

const log = console.log;

log(chalk.green('Starting...'));
dash.on("detected", (id) => {
  log(`${chalk.blue('Pressed dash button with MAC')} ${chalk.green(id)}`);
});
