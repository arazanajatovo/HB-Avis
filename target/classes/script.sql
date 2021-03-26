create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
create table Avis (id bigint not null auto_increment, dateEnvoi datetime(6), description longtext, note float, jeu_id bigint not null, joueur_id bigint not null, primary key (id)) engine=InnoDB
create table Classification (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Editeur (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Fichier (id bigint not null auto_increment, nom varchar(255), size bigint not null, type varchar(255), uriDL varchar(255), uriImg varchar(255), primary key (id)) engine=InnoDB
create table Genre (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Jeu (id bigint not null auto_increment, dateSortie date not null, description longtext, nom varchar(255), classification_id bigint not null, editeur_id bigint not null, fichier_id bigint, genre_id bigint not null, modeleEconomique_id bigint not null, primary key (id)) engine=InnoDB
create table Jeu_plateformes (jeux_id bigint not null, plateformes_id bigint not null) engine=InnoDB
create table Joueur (id bigint not null auto_increment, dateInscription datetime(6), estAdministrateur bit not null, motDePasse varchar(255), pseudo varchar(255), primary key (id)) engine=InnoDB
create table ModeleEconomique (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
create table Plateforme (id bigint not null auto_increment, nom varchar(255), primary key (id)) engine=InnoDB
alter table Avis add constraint FKrik10ny2bhmg4ne337qya1u08 foreign key (jeu_id) references Jeu (id)
alter table Avis add constraint FKnx4jg5hrhnjc8khgwkxctwlol foreign key (joueur_id) references Joueur (id)
alter table Jeu add constraint FKnxhkgg2jv30glq1203h9e7f4p foreign key (classification_id) references Classification (id)
alter table Jeu add constraint FK7a7kfdjaxf9tjngru0613v35 foreign key (editeur_id) references Editeur (id)
alter table Jeu add constraint FKaf6vxa0nfim3nlb6ofkf4oryl foreign key (fichier_id) references Fichier (id)
alter table Jeu add constraint FK4yncls6u8yv63mq98h4r99776 foreign key (genre_id) references Genre (id)
alter table Jeu add constraint FK1m33kxvyc9liv1huerbtq681j foreign key (modeleEconomique_id) references ModeleEconomique (id)
alter table Jeu_plateformes add constraint FKba2og9d3nvti1i7dgkhebtce2 foreign key (plateformes_id) references Plateforme (id)
alter table Jeu_plateformes add constraint FK62qro6d49kow0bf906dd8dy76 foreign key (jeux_id) references Jeu (id)
