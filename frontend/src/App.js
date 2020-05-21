import React from "react";
import Select from 'react-select';
import API from './utils/API';
import DatePicker from "react-datepicker";
import ru from 'date-fns/locale/ru';
import moment from "moment";
import "../node_modules/react-datepicker/dist/react-datepicker.css";
import ReactEcharts from 'echarts-for-react';
import "./dist/css/bootstrap.min.css";
import { Tab, Tabs, TabList, TabPanel } from 'react-tabs';
import 'react-tabs/style/react-tabs.css';
import "./styles.css";

export default class App extends React.Component {

  state = {
    cities: [],
    selectedCities: null,
    startDate: new Date('2019-01-01'),
    endDate: new Date('2019-01-30'),
    climdata: [],
  };

  handleCityChange = selectedCities => {
  this.setState({ selectedCities });

};

  handleStartDateChange = startDate => {
    this.setState({ startDate });

  };
  handleEndDateChange = endDate => {
    this.setState({ endDate });
  };

  onClick() {


    let getParams = {
        city: this.state.selectedCities.map(c => c.value) + '',
        startdate: moment(this.state.startDate).format('YYYY-MM-DD'),
        enddate: moment(this.state.endDate).format('YYYY-MM-DD'),

    };
      //console.log(getParams)

    API.getData(getParams)
      .then(res => {
        const climdata = res.data;
        this.setState({ climdata });
      });
  };

  componentDidMount() {
    API.getCities()
      .then(res => {
        const cities = res.data;
        this.setState({ cities });
      });

  };

  render() {
  let titles =  this.state.climdata.data && this.state.climdata.data.map(c=>(c.city_name));
  let getTemp = this.state.climdata.data && this.state.climdata.data.map(c=>({data: c.temp, name: c.city_name, type: "line", smooth: true }));
  let getPress = this.state.climdata.data && this.state.climdata.data.map(c=>({data: c.press, name: c.city_name, type: "line", smooth: true }));
  let getHum = this.state.climdata.data && this.state.climdata.data.map(c=>({data: c.hum, name: c.city_name, type: "line", smooth: true }));

            return (
              <div className="container">
              <h1 className="py-5">Климатические показатели городов РФ</h1>
              <div className="row flex-container">
                  <div className="col flex-item">
                    <p>
                      Выберите город:
                    </p>
                    <Select
                      onChange={this.handleCityChange}
                      options={this.state.cities.map(c=>({value: c.id, label: c.name}))}
                      isMulti
                      placeholder="Выбор города"
                    />
                  </div>
                    <div className="col flex-item">
                    <p>
                      Выберите начальную дату периода:
                    </p>
                    <DatePicker
                      selected={new Date(this.state.startDate)}
                      onChange={this.handleStartDateChange}
                      maxDate={new Date('2019-12-31')}
                      minDate={new Date('2019-01-01')}
                      dateFormat="d MMMM, yyyy"
                      locale={ru}
                    />
                    </div>
                    <div className="col flex-item">
                    <p>
                      Выберите конечную дату периода:
                    </p>
                    <DatePicker
                      selected={new Date(this.state.startDate)}
                      onChange={this.handleEndDateChange}
                      maxDate={new Date('2019-12-31')}
                      minDate={new Date('2019-01-01')}
                      dateFormat="d MMMM, yyyy"
                      locale={ru}
                    />
                    </div>
                  </div>
                  <div className="button">
                  <button className="btn btn-primary"  onClick={() => this.onClick() }>Получить данные</button>
                  </div>
            <Tabs>
                  <TabList>
                    <Tab>Температура</Tab>
                    <Tab>Атмосферное давление</Tab>
                    <Tab>Влажность</Tab>
                  </TabList>
             <TabPanel>
               <div className="chart">
                  <ReactEcharts
                         option={{
                           backgroundColor: '#D3D3D3',
                           tooltip: {
                               trigger: 'axis'
                           },
                           title: {text: 'График температуры, C', x: 'left'},
                           legend: { data: titles
                                 },
                           xAxis: {
                             type: "category",
                             data: this.state.climdata.daterange,
                             boundaryGap: false,
                           },
                           yAxis: {
                             type: "value"
                           },
                           series: getTemp,
                         }}
                         style={{height: '500px', width: '100%'}}
                         backgroundColor='#2c343c'
                    />
              </div>
             </TabPanel>
             <TabPanel>
               <div className="chart">
                  <ReactEcharts
                         option={{
                           backgroundColor: '#D3D3D3',
                           tooltip: {
                               trigger: 'axis',
                           },
                           title: {text: 'Атмосферное давление, мм рт.ст.', x: 'left'},
                           legend: {data: titles},
                           xAxis: {
                             type: "category",
                             data: this.state.climdata.daterange,
                             boundaryGap: false,
                           },
                           yAxis: {
                             type: "value"
                           },
                           series: getPress,
                         }}
                         style={{height: '500px', width: '100%'}}
                         backgroundColor='#2c343c'
                    />
              </div>
             </TabPanel>

             <TabPanel>
               <div className="chart">
                  <ReactEcharts
                         option={{
                           backgroundColor: '#D3D3D3',
                           tooltip: {
                               trigger: 'axis'
                           },
                           title: {text: 'Влажность, %', x: 'left'},
                           legend: {data: titles},
                           xAxis: {
                             type: "category",
                             data: this.state.climdata.daterange,
                             boundaryGap: false,
                           },
                           yAxis: {
                             type: "value"
                           },
                           series: getHum,
                         }}
                         style={{height: '500px', width: '100%'}}
                         backgroundColor='#2c343c'
                    />
              </div>
             </TabPanel>
             </Tabs>

             </div>

            );
  }
}
