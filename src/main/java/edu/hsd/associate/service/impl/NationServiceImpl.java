package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Nation;
import edu.hsd.associate.repository.NationRepository;
import edu.hsd.associate.service.NationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/21 19:31
 */
@Service
public class NationServiceImpl implements NationService {

    @Autowired
    private NationRepository nationRepository;

    @Override
    public List<Nation> findAll() {
        return nationRepository.findAll();
    }
}
