import { Injectable } from '@angular/core';
import { HttpClient, HttpParams} from '@angular/common/http'
import { Observable} from 'rxjs/Observable'
import { RequestOptions } from '@angular/http';
@Injectable()
export class AppService {

  constructor(private http: HttpClient) { 

  }
 getGridList() : Observable<any[]> {

    return this.http.get<any[]>('http://localhost:8081/list');
 }
postNewItem(body) {
  return this.http.post<any>('http://localhost:8081/addnew',body);
}
postUpdateItem(body) {
  return this.http.post<any>('http://localhost:8081/updateItem',body);
}
deleteItem(body) {
  return this.http.post<any>('http://localhost:8081/del_item',body);
}

}
