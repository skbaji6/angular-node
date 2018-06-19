import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { AppService } from './services/app.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit{

  showGrid = false;
  isGridVisible = true;
  name;
  formula;
  selectedObject;
  data = [];
  isEditFlow = false;
   
   constructor(private appService:AppService){

   }
   ngOnInit(): void {
     this.loadGridList();
  }
  loadGridList() {
    this.appService.getGridList().subscribe(results => {
      this.data = results;
    }, (error) => {
      console.log('error occurred');
    });
  }
   onFilterMenuSelection() {
     this.showGrid = true;
   } 
   onNew() {
     this.isEditFlow = false;
     this.isGridVisible = false;
   }
   onSave(){
    if(this.name != undefined && this.formula != undefined){
      if(this.isEditFlow) {
        let body = {
          "id" : this.selectedObject.id,
          "name" : this.name,
          "formula" : this.formula
        };
        this.appService.postUpdateItem(body).subscribe(results => {
          debugger;
          console.log(results);
          this.loadGridList();
        }, (error) => {
          debugger;
          console.log('error occurred');
        });
      } else {
        let body = {
          "name" : this.name,
          "formula" : this.formula
        };
        this.appService.postNewItem(body).subscribe(results => {
          debugger;
          console.log(results);
          this.loadGridList();
        }, (error) => {
          debugger;
          console.log('error occurred');
        });
      }
      this.isGridVisible = true;
    }
   } 
   onRowSelection(index, row) {
    for (let i = 0; i < this.data.length; i++) {
      if (index == i) {
        this.data[i].selected = true;
        this.selectedObject = row;
      } else {
        this.data[i].selected = false;
      }
    }
  }
  onEdit() {
    this.isGridVisible = false;
    this.isEditFlow = true;
    this.name = this.selectedObject.name;
    this.formula = this.selectedObject.formula;
  }
  onDelete() {
    let body = {
      "id" : this.selectedObject.id
    };
    this.appService.deleteItem(body).subscribe(results => {
      debugger;
      console.log(results);
      this.loadGridList();
    }, (error) => {
      debugger;
      console.log('error occurred');
    });
  }    
}
