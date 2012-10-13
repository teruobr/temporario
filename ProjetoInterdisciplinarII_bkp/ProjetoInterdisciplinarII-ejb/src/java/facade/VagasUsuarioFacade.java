/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import bean.VagasUsuario;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Felipe
 */
@Stateless
public class VagasUsuarioFacade extends AbstractFacade<VagasUsuario> {
    @PersistenceContext(unitName = "ProjetoInterdisciplinarII-ejbPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public VagasUsuarioFacade() {
        super(VagasUsuario.class);
    }
    
    public VagasUsuario getConsultaVagaUsuarioID(long id) {
        try {
            return (VagasUsuario) em.createQuery("SELECT OBJECT(u) FROM VagasUsuario u  WHERE  u.id='" + id +"'").getSingleResult();
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }
    
    public VagasUsuario validaVagaUsuario(VagasUsuario vaga) {
        try {
            return (VagasUsuario) em.createQuery("SELECT OBJECT(u) FROM VagasUsuario u  WHERE  u.idEmpresa='" + vaga.getIdEmpresa() +"'"
                    + "and u.idVaga='" +vaga.getIdVaga() +"'"
                    + "and u.idUsuario='" +vaga.getIdUsuario() +"'").getSingleResult();
        } catch (Exception e) {
            System.out.println(e);
            return null;
        }
    }
    
}
