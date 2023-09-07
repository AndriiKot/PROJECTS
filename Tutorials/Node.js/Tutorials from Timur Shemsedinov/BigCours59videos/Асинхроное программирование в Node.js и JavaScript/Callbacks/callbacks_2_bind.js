
const readConfig = () => {};

readConfig('myConfig', 
  query.bind(null,'select * from cities',
    httpGet.bind(null,'http://kpi.ua',
      readFile.bind('README.md', () =>{}); // !!!!
    );
  );
);