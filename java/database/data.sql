BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO companies (company_name, city, url) VALUES
('Sherwin-Williams', 'Cleveland', 'https://careers.sherwin-williams.com/us/en/home.html'),
('Progressive Insurance', 'Cleveland', 'https://www.progressive.com/careers/'),
('PNC', 'Cleveland', 'https://careers.pnc.com/global/en'),
('KeyBank', 'Cleveland', 'https://www.key.com/about/careers.html'),
('Hyland Software', 'Cleveland', 'https://www.hyland.com/en/company/careers'),
('Rockwell Automation', 'Cleveland', 'https://www.rockwellautomation.com/en-us/careers.html'),
('National General', 'Cleveland', 'https://careers.nationalgeneral.com/'),
('Medical Mutual', 'Cleveland', 'https://www.medmutual.com/About-Medical-Mutual/Jobs.aspx'),
('AmTrust Financial Services', 'Cleveland', 'https://amtrustfinancial.com/careers'),
('MRI Software', 'Cleveland', 'https://www.mrisoftware.com/about/careers/'),
('ECHO', 'Cleveland', 'https://recruiting.paylocity.com/recruiting/jobs/All/43abb70b-1411-4c3e-a01a-ac005ea57ac6/Echo-Health-Inc?source=LinkedIn_Feed'),
('Huntington National Bank', 'Columbus', 'https://www.huntington.com/careers'), 
('Nationalwide', 'Columbus', 'https://www.nationwide.com/personal/about-us/careers/explore/'), 
('JPMC', 'Columbus', 'https://www.jpmorganchase.com/careers'), 
('Accenture', 'Columbus', 'https://www.accenture.com/us-en/careers'), 
('Quantum Health', 'Columbus', 'https://quantum-health.com/careers/'), 
('PNC', 'Pittsburgh', 'https://careers.pnc.com/global/en'),
('BNY', 'Pittsburgh', 'https://www.bny.com/corporate/global/en/careers/work-with-us.html'), 
('Dick''s Sporting Goods', 'Pittsburgh', 'https://www.dickssportinggoods.jobs/' ), 
('Duolingo', 'Pittsburgh', 'https://careers.duolingo.com/');


COMMIT TRANSACTION;
