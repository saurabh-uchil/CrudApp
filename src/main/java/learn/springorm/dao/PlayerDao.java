package learn.springorm.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import learn.springorm.entity.Player;

public class PlayerDao {
	
	@Autowired
	private HibernateTemplate template;
	
	public HibernateTemplate getTemplate() {
		return template;
	}

	public void setTemplate(HibernateTemplate template) {
		this.template = template;
	}
	
	@Transactional
	public int savePlayer(Player player) {
		int i = (int) this.template.save(player);
		return i;
	}

	public Player getPlayerById(int player_id) {
		Player p = this.template.get(Player.class, player_id);
		return p;
	}

	public List<Player> showAllPlayers() {
		List<Player> playerList = this.template.loadAll(Player.class);
		return playerList;
	}
	
	@Transactional
	public void deletePlayerById(int player_id) {
		Player player = this.template.get(Player.class, player_id);
		this.template.delete(player);
	}
	
	@Transactional
	public Player updatePlayerById(Player player) {
		
		this.template.update(player);
		return player;
	}
}
