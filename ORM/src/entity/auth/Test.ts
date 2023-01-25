import { Column, Entity, JoinColumn, ManyToOne, PrimaryGeneratedColumn } from 'typeorm';
import { Profile } from './Profile';

@Entity()
export class TestTable {
  @PrimaryGeneratedColumn('uuid')
  id: string;

  @Column({
    nullable: false,
  })
  Test_Navn: string;

  @Column({
    nullable: false,
  })
  Test_TlfNr: number;

  @Column({
    nullable: false,
  })
  Test_Email: string;
}
