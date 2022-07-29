import { log } from './helpers/helpers';
import { Request, Response } from 'express';

import * as express from 'express';

const app = express();
const APP_ENV = process.env.APP_ENV;
const PORT = process.env.PORT || 3000;

app.get('/', (req: Request, res: Response) => {
  res.json({
    message: 'Hello World',
    status: 'succesfull',
  });
});

app.listen(PORT, () => {
  log('Environment', APP_ENV);
  log(`Server running from the port ${PORT}`);
});
