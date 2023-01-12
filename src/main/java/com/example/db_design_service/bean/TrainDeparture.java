package com.example.db_design_service.bean;

public class TrainDeparture {
    private String train_start_station;
    private String train_stopover_station;
    private String train_end_station;

    @Override
    public String toString() {
        return "TrainDeparture{" +
                "train_start_station='" + train_start_station + '\'' +
                ", train_stopover_station='" + train_stopover_station + '\'' +
                ", train_end_station='" + train_end_station + '\'' +
                ", passenger_volume=" + passenger_volume +
                ", train_start_time='" + train_start_time + '\'' +
                ", frequency='" + frequency + '\'' +
                '}';
    }

    private int passenger_volume;
    private String train_start_time;
    private String frequency;

    public TrainDeparture(String train_start_station, String train_stopover_station, String train_end_station, int passenger_volume, String train_start_time, String frequency) {
        this.train_start_station = train_start_station;
        this.train_stopover_station = train_stopover_station;
        this.train_end_station = train_end_station;
        this.passenger_volume = passenger_volume;
        this.train_start_time = train_start_time;
        this.frequency = frequency;
    }

    public TrainDeparture() {
    }

    public String getTrain_start_station() {
        return train_start_station;
    }

    public void setTrain_start_station(String train_start_station) {
        this.train_start_station = train_start_station;
    }

    public String getTrain_stopover_station() {
        return train_stopover_station;
    }

    public void setTrain_stopover_station(String train_stopover_station) {
        this.train_stopover_station = train_stopover_station;
    }

    public String getTrain_end_station() {
        return train_end_station;
    }

    public void setTrain_end_station(String train_end_station) {
        this.train_end_station = train_end_station;
    }

    public int getPassenger_volume() {
        return passenger_volume;
    }

    public void setPassenger_volume(int passenger_volume) {
        this.passenger_volume = passenger_volume;
    }

    public String getTrain_start_time() {
        return train_start_time;
    }

    public void setTrain_start_time(String train_start_time) {
        this.train_start_time = train_start_time;
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }
}
