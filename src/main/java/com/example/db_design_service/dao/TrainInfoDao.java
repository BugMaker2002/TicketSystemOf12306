package com.example.db_design_service.dao;

import com.example.db_design_service.bean.*;
import org.apache.ibatis.annotations.*;

import javax.swing.text.TabableView;
import java.util.List;
/**
 *
 * 查询所有列车信息
 * 或者查询某辆列车信息
 */
@Mapper
public interface TrainInfoDao {

    /**
     *
     * 查询所有列车信息
     * @return
     */
    @Select("SELECT * FROM train_info LIMIT 100")
    List<TrainInfo> findAllTrainInfo();

    /**
     *
     * 前端列车信息分页查询
     * @param offset
     * @param limit
     * @return
     */
    @Select("SELECT * FROM train_info LIMIT #{limit} OFFSET  #{offset}")
    List<TrainInfo> findTrainInfoByLimit(@Param("offset") int offset,@Param("limit") int limit);


    /**
     *
     * 根据车次查询列车
     * @param train_number
     * @return
     */
    @Select("SELECT * FROM train_info where train_number = #{train_number}")
    TrainInfo findTrainInfo(@Param("train_number") String train_number);


    @Update("update train_info set train_running_type = '已停运' where train_no = #{train_no}")
    void updateTrainTypeStop(@Param("train_no") String train_no);

    @Update("update train_info set train_running_type = '正在运行' where train_no = #{train_no}")
    void updateTrainTypeStart(@Param("train_no") String train_no);


    @Select("select train_info.train_no as train_no ,train_number ,carriage_no ,seat_type,seat_count from train_info ,seat where train_info.train_no = seat.train_no and train_info.train_number=#{train_number}")
    List<SeatInfo> SelectSeatInfoByTrainNumber(@Param("train_number") String train_number);

    @Delete("delete from seat where train_no = #{train_no} and carriage_no = #{carriage_no}")
    void deleteTrainSeat(@Param("train_no") String train_no,@Param("carriage_no") String carriage_no);


    @Insert("insert into  seat (train_no,carriage_no,seat_type,seat_count) VALUES ( #{seatInfo.train_no}, #{seatInfo.carriage_no}, #{seatInfo.seat_type},#{seatInfo.seat_count})")
    void addTrainSeat(@Param("seatInfo") SeatInfo seatInfo);

    @Select("select train_number from train_info")
    List<String> selectAllTrainNumber();


    @Insert("insert into train_info (train_no,train_number,train_type,train_carriages,train_start_station,train_end_station," +
            "train_start_time,train_end_time,train_arrive_day,train_running_time,train_running_type) values (#{trainInfo.train_no}," +
            "#{trainInfo.train_number},#{trainInfo.train_type},#{trainInfo.train_carriages},#{trainInfo.train_start_station}," +
            "#{trainInfo.train_end_station},#{trainInfo.train_start_time},#{trainInfo.train_end_time},#{trainInfo.train_arrive_day}," +
            "#{trainInfo.train_running_time},#{trainInfo.train_running_type})")
    void AddTrainInfo(@Param("trainInfo") TrainInfo trainInfo);

    @Update("update train_info set train_no=#{trainInfo.train_no},train_number=#{trainInfo.train_number},train_type=#{trainInfo.train_type},train_carriages=#{trainInfo.train_carriages},train_start_station=#{trainInfo.train_start_station},train_end_station=#{trainInfo.train_end_station}," +
            "train_start_time=#{trainInfo.train_start_time},train_end_time=#{trainInfo.train_end_time},train_arrive_day=#{trainInfo.train_arrive_day},train_running_time=#{trainInfo.train_running_time},train_running_type=#{trainInfo.train_running_type} where train_no = #{trainInfo.train_no};")
    void ChangeTrainInfo(@Param("trainInfo") TrainInfo trainInfo);

    @Delete("delete from train_info where train_no = #{train_no} ")
    void deleteTrainInfo(@Param("train_no") String train_no);

    @Insert("insert into train_parking_station (train_no,train_number,arrive_day_str,arrive_time,start_time,running_time," +
            "station_no,station_name) values (#{train_no},#{trainInfo.train_number}," +
            "#{trainInfo.arrive_day_str},#{trainInfo.arrive_time}," +
            "#{trainInfo.start_time},#{trainInfo.running_time}," +
            "#{trainInfo.station_no},#{trainInfo.station_name})")
    void AddTrainStation(@Param("trainInfo") TrainParkingInfo trainParkingInfo,@Param("train_no") String train_no);

    /**
     * 管理员界面管理车次的信息
     */
    @Select("select * from train_departure")
    List<TrainDeparture> selectAllDeparture();

    @Update("update train_departure set passenger_volume=#{trainDeparture.passenger_volume}," +
            "train_start_time=#{trainDeparture.train_start_time},frequency=#{trainDeparture.frequency}" +
            " where train_start_station=#{trainDeparture.train_start_station} and train_stopover_station=" +
            "#{trainDeparture.train_stopover_station} and train_end_station=#{trainDeparture.train_end_station}")
    void updateDeparture(@Param("trainDeparture")TrainDeparture trainDeparture);

    @Insert("insert into train_departure values(#{trainDeparture.train_start_station}," +
            "#{trainDeparture.train_stopover_station}," +
            "#{trainDeparture.train_end_station},#{trainDeparture.passenger_volume}," +
            "#{trainDeparture.train_start_time},#{trainDeparture.frequency})")
    void addDeparture(@Param("trainDeparture")TrainDeparture trainDeparture);

    @Delete("delete from train_departure where train_start_station=#{trainDeparture.train_start_station} and " +
            "train_stopover_station=#{trainDeparture.train_stopover_station}" +
            "and train_end_station=#{trainDeparture.train_end_station} and passenger_volume=" +
            "#{trainDeparture.passenger_volume}" +
            "and train_start_time=#{trainDeparture.train_start_time} and frequency=#{trainDeparture.frequency}")
    void deleteDeparture(@Param("trainDeparture")TrainDeparture trainDeparture);
}


