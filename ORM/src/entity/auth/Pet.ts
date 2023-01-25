import { Entity, JoinColumn, ManyToOne, OneToOne, PrimaryGeneratedColumn, Column } from 'typeorm';
import { Profile } from './Profile';

@Entity()
export class Pet {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column()
  animal: string;

  @Column()
  breed: string;

  @Column()
  bdate: string;

  @Column()
  name: string;

  @ManyToOne(() => Profile, { nullable: false })
  @JoinColumn({
    name: 'profile_fk',
    referencedColumnName: 'id',
  })
  profile_fk: Profile;
}
