import { BrowserModule } from '@angular/platform-browser';
import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { HttpModule } from '@angular/http';

import { AppComponent } from './app.component';
import { RouterModule,Routes } from "@angular/router";
import { CommonModule, LocationStrategy, HashLocationStrategy } from '@angular/common';
import { FormsModule }   from '@angular/forms';
import {NgxPaginationModule} from 'ngx-pagination';
import { HttpClientModule} from '@angular/common/http'
import { BrowserAnimationsModule} from '@angular/platform-browser/animations'
import { MatTableModule, MatSortModule,MatFormFieldModule,MatInputModule, MatCheckboxModule, MatDialogModule,
MatRadioModule, MatMenuModule, MatDatepickerModule, MatNativeDateModule,MatIconModule, MatProgressSpinnerModule,MatGridListModule, MatDividerModule, MatOptionModule, MatSelectModule} from '@angular/material'
import {MatPaginatorModule} from '@angular/material/paginator';
import {MatChipsModule} from '@angular/material/chips';
import { FileDropModule } from 'ngx-file-drop';
import { AppService } from './services/app.service';
@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    HttpModule,
    FormsModule,
    CommonModule,
    NgxPaginationModule,
    HttpClientModule, 
    BrowserAnimationsModule,
    MatTableModule,
    MatSortModule,
    MatPaginatorModule,
    MatFormFieldModule,
    MatInputModule,
    MatIconModule,
    MatCheckboxModule,
    MatDialogModule,
    MatRadioModule,
    MatMenuModule,
    MatChipsModule,
    MatDatepickerModule,
    MatNativeDateModule,
    MatProgressSpinnerModule,
    MatGridListModule,
    MatDividerModule,
    MatOptionModule,
    MatSelectModule,
    FileDropModule
  ],
  schemas: [ CUSTOM_ELEMENTS_SCHEMA],
  providers: [AppService],
  bootstrap: [AppComponent]
  
  
})
export class AppModule { }
