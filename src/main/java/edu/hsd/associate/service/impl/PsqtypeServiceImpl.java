package edu.hsd.associate.service.impl;

import edu.hsd.associate.dataobject.Psqtype;
import edu.hsd.associate.repository.PsqtypeRepository;
import edu.hsd.associate.service.PsqtypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 曹成成
 * @date 2019/8/17 17:04
 */
@Service
public class PsqtypeServiceImpl implements PsqtypeService {
    @Autowired
    private PsqtypeRepository psqtypeRepository;
    @Override
    public List<Psqtype> findAll() {
        return psqtypeRepository.findAll();
    }
}
