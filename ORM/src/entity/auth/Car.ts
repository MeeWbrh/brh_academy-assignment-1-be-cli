import { profile } from 'console';
import { Entity, Column, JoinTable, JoinColumn, PrimaryGeneratedColumn, OneToOne, OneToMany, ManyToOne } from 'typeorm';
import { Profile } from './Profile';

@Entity()
export class Car {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column()
  brand: string;

  @Column()
  model: string;

  @Column()
  model_year: number;

  @Column()
  km_status: string;

  @Column()
  fuel: string;

  @Column()
  fuel_consumption: string;

  @Column()
  half_yearly_charge: string;

  @Column()
  horsepower: string;

  @Column()
  Acceleration: string;

  @Column()
  Gear_type: string;

  @Column({
    nullable: true,
  })
  imgURL: string;

  @ManyToOne(() => Profile, { nullable: false })
  @JoinColumn({
    name: 'profile_fk',
    referencedColumnName: 'id',
  })
  profile_fk: Profile;
}
