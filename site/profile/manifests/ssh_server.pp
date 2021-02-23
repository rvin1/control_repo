class profile::ssh_server {
       package {'openssh-server':
                 ensure => present,
       }
       service {'sshd':
                 ensure => 'running',
                 enable => 'true',
       }
       ssh_authorized_key { 'root@master.puppet.vm':
                 ensure => present,
                 user => 'root',
                 type => 'ssh-rsa',
                 key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQEDyy1uCzfgSr5DYveSE28FaZ2qfbakmVh1bHGhnUBMFR5M4q6PWIKDcb07/hBKj4JKF0OSUSCXIHmrc53BZJRNHd7KBS+0vMuuJbkDiM2me46NtNIopzopPV+r+Lic+hMLICFIrtbvXBOWHEkUu2WW0nZwDc7uwKoclZRCOh3yZ+Omg8NoMynTjRHI+P4i34eJg+n6KvsjDYe4WRUIFtff3tYmBiVqXuOZmQhax14RjX1t4ogUmPdLLg5wCXIkHMldfLpDuOE9YtXwhBCqgJ++SUnEfpydWubR4cDnwwAb58CMC4phiDC8/7uT+6CdvliF2dO0zzJCUGrRUzaOPP',
       }
}       
       
        
