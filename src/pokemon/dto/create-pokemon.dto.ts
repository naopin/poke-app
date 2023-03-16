import { ProductCategory } from '@prisma/client';
import { IsNumber, IsOptional, IsString } from 'class-validator';

export class CreatePokemonDto {
  @IsNumber()
  cardRushId: number;

  @IsString()
  name: string;

  @IsNumber()
  price: number;

  @IsOptional()
  category: ProductCategory;
}
