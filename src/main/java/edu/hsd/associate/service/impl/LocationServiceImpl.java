package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Location;
import edu.hsd.associate.repository.LocationRepository;
import edu.hsd.associate.service.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 20:04
 */
@Service
public class LocationServiceImpl implements LocationService {

    @Autowired
    private LocationRepository locationRepository;

    @Override
    public List<Location> findAll() {
        return locationRepository.findAll();
    }
}
