package com.example.db_design_service.bean;

import java.util.List;

public class TrainDepartureData {
    private int status;
    private List<TrainDeparture> trainDepartures;

    public TrainDepartureData(int status, List<TrainDeparture> trainDepartures) {
        this.status = status;
        this.trainDepartures = trainDepartures;
    }

    @Override
    public String toString() {
        return "TrainDepartureData{" +
                "status=" + status +
                ", trainDepartures=" + trainDepartures +
                '}';
    }

    public TrainDepartureData() {
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public List<TrainDeparture> getTrainDepartures() {
        return trainDepartures;
    }

    public void setTrainDepartures(List<TrainDeparture> trainDepartures) {
        this.trainDepartures = trainDepartures;
    }
}
