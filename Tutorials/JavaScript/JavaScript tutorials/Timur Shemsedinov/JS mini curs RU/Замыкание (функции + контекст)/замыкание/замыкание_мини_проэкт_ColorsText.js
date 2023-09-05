
const logger = (kind) => {
  const colors = {
    warning: '\x1b[1;33m',
    error: '\x1b[0;31m',
    info: '\x1b[1;37m',
  };
  const color = colors[kind] || colors.info;
  return (s) => {
    const date = new Date().toISOString();
    console.log(color + date + '\t' + s);
  };
};

const warning = logger('warning');
const error = logger('error');
const slow = logger('slow');

slow('I am slow logger');
warning('Hello!');
error('World');

