package edu.hsd.associate.controller;

import edu.hsd.associate.dataobject.AssociateWord;
import edu.hsd.associate.service.AssociateWordService;
import edu.hsd.associate.utils.ConvertUtils;
import edu.hsd.associate.vo.AssociateWordVo;
import edu.hsd.associate.vo.DataGrid;
import edu.hsd.associate.vo.MessageVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.*;

import java.util.*;

/**
 * @author 曹成成
 * @date 2019/8/14 9:58
 */

@RestController
@RequestMapping("/associateWord")
@Slf4j
public class AssociateWordController {

    @Autowired
    private AssociateWordService associateWordService;

    /**
     * 分页查询联想词
     * @param associateWord
     * @param associatePosId
     * @param page
     * @param size
     * @return
     */
    @GetMapping("/pageList")
    public DataGrid list(@RequestParam(value = "associateWord", defaultValue = "")String associateWord,
                         @RequestParam(value = "associatePosId", defaultValue = "0")Integer associatePosId,
                         @RequestParam(value = "page") Integer page,
                         @RequestParam(value = "rows") Integer size){
        PageRequest pageRequest = PageRequest.of(page - 1, size);
        Page<AssociateWordVo> associateWordVoPage = associateWordService.findAllSortAssociateWord(pageRequest,associateWord,associatePosId);
        //按照联想词排序
        // 不能在这排序,这里已经查询到了页数了
        //Collections.sort(associateWordVo, (o1, o2) -> Collator.getInstance(Locale.CHINESE).compare(o1.getAssociateWord(), o2.getAssociateWord()));
        return ConvertUtils.Page2DataGrid(associateWordVoPage);
    }


    @GetMapping("/allList")
    public List<AssociateWord> allList(){
        List<AssociateWord> associateWordList = associateWordService.findAll();
        return associateWordList;
    }

    @PostMapping("/addWord")
    public MessageVo addWord(@RequestParam(value = "word", defaultValue = "")String word,
                             @RequestParam(value = "posId", defaultValue = "0")Integer posId){
        AssociateWord associateWord = new AssociateWord();
        associateWord.setAssociateWord(word);
        associateWord.setAssociatePosId(posId);
        AssociateWord associateWord1 = associateWordService.save(associateWord);

        MessageVo messageVo;
        if (associateWord1 != null){
            messageVo = new MessageVo(true, "添加成功！");
        }else {
            messageVo = new MessageVo(false, "添加失败！");
        }
        return messageVo;
    }

    @PostMapping("/deleteWord")
    public MessageVo deleteWord(@RequestParam(value = "wordId", defaultValue = "")String wordId){
        List<Integer> ids = ConvertUtils.Strings2ListInt(wordId);
        MessageVo messageVo = new MessageVo(true, "删除成功！");
        try {
            associateWordService.deleteByIdIn(ids);
        }catch (Exception e){
            log.error("删除联想词失败！" + e);
            messageVo = new MessageVo(false, "删除失败！");
        }
        return messageVo;
    }
}
