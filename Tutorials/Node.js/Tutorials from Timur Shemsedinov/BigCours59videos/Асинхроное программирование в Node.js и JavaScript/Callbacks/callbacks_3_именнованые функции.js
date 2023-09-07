
function readConfig(fileName) {
   query('selec * from cities');
}

function query(statement) {
  httpGet('http://kpi.ua');
}

function readFile() {

}

readConfig('myConfig', (e, data) => {
  query('select * from cities',(e, data) => {
    httpGet('http://kpi.ua', (e, data) => {
      readFile('README.md', (e, data) => {
      });
    });
  });
});