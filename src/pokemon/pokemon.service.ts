import { Injectable } from '@nestjs/common';
import { ProductCategory } from '@prisma/client';
import { PrismaService } from '../prisma/prisma.service';
import { CreatePokemonDto } from './dto/create-pokemon.dto';

@Injectable()
export class PokemonService {
  constructor(private prisma: PrismaService) {}

  async createPokemon() {
    const data = {
      name: 'aaa',
      price: 100,
      cardRushId: 1,
      category: ProductCategory.CARD,
    } as CreatePokemonDto;
    const pokemon = await this.prisma.pokemon.create({
      data: {
        ...data,
      },
    });

    return true;
  }
}
