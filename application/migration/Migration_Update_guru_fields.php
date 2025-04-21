<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Update_guru_fields extends CI_Migration {

    public function up() {
        // Menambah kolom baru
        $this->dbforge->add_column('tbl_guru', [
            'guru_riwayat_pendidikan' => [
                'type' => 'TEXT',
                'null' => TRUE,
                'after' => 'guru_nama'
            ]
        ]);

        // Menghapus kolom lama
        $this->dbforge->drop_column('tbl_guru', 'guru_jenkel');
        $this->dbforge->drop_column('tbl_guru', 'guru_tmp_lahir');
        $this->dbforge->drop_column('tbl_guru', 'guru_tgl_lahir');
    }

    public function down() {
        // Mengembalikan kolom lama
        $this->dbforge->add_column('tbl_guru', [
            'guru_jenkel' => [
                'type' => 'VARCHAR',
                'constraint' => '2',
                'null' => TRUE
            ],
            'guru_tmp_lahir' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
                'null' => TRUE
            ],
            'guru_tgl_lahir' => [
                'type' => 'VARCHAR',
                'constraint' => '100',
                'null' => TRUE
            ]
        ]);

        // Menghapus kolom baru
        $this->dbforge->drop_column('tbl_guru', 'guru_riwayat_pendidikan');
    }
}