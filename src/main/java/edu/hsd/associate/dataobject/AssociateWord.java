package edu.hsd.associate.dataobject;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Data
public class AssociateWord {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //自增长主键
    private Integer associateWordId;

    private String associateWord;

    private Integer associatePosId;

    public AssociateWord() {
    }

    public AssociateWord(String associateWord, Integer associatePosId) {
        this.associateWord = associateWord;
        this.associatePosId = associatePosId;
    }
}
