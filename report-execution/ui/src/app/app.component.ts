import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';

export interface ReportRow {
  tradeDate: string;
  eventTimestamp: number;
}

// const ELEMENT_DATA: ReportRow[] = [
//   { tradeDate: '20220210', eventTimestamp: 123456 },
//   { tradeDate: '20220215', eventTimestamp: 123457 },
//   { tradeDate: '20220220', eventTimestamp: 123458 },
//   { tradeDate: '20210210', eventTimestamp: 123459 },
// ];

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
})
export class AppComponent {
  constructor(private http: HttpClient) {}

  title = 'Report Execution';

  displayedColumns: string[] = ['tradeDate', 'eventTimestamp'];
  // dataSource = ELEMENT_DATA;

  dataSource$ = this.http.get<ReportRow[]>('http://localhost:3000');

  upload(event: Event) {
    console.log(event);
  }
}
