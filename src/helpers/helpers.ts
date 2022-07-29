export const log = (message?: any, ...optionalParams: any[]): void => {
  // for the moment a simple console.log
  // in a future we can store the logs, etc

  /* eslint no-console: "off" */
  console.log(message, ...optionalParams);
};
