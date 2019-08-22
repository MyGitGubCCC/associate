package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Pos;
import edu.hsd.associate.repository.PosRepository;
import edu.hsd.associate.service.PosService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/15 18:48
 */
@Service
public class PosServiceImpl implements PosService {

    @Autowired
    private PosRepository posRepository;
    @Override
    public List<Pos> findAll() {
        return posRepository.findAll();
    }
}
