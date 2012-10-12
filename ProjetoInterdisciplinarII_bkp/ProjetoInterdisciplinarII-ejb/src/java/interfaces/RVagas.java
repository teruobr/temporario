/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import bean.Vagas;
import facade.VagasFacade;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.ejb.LocalBean;

/**
 *
 * @author 31049184
 */
@Stateless(mappedName = "RVagas")
public class RVagas implements RVagasRemote{
    
    @EJB
    VagasFacade facade;

    @Override
    public void incluir(Vagas vaga) {
        facade.create(vaga);
    }

    @Override
    public void alterar(Vagas vaga) {
       facade.edit(vaga);
    }

    @Override
    public void excluir(Vagas vaga) {
        facade.remove(vaga);
    }

    @Override
    public List<Vagas> consultar(Vagas vaga) {
        return facade.getConsultaVaga(vaga);
    }

    

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
}
