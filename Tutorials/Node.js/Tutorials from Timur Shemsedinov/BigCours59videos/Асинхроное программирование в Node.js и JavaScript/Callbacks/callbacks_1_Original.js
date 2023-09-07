
const readConfig = () => {}

readConfig('myConfig', (e, data) => {
  query('select * from cities',(e, data) => {
    httpGet('http://kpi.ua', (e, data) => {
      readFile('README.md', (e, data) => {
      });
    });
  });
});