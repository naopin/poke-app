import { Controller, Post } from '@nestjs/common';
import { PokemonService } from './Pokemon.service';

// @UseGuards(AuthGuard('jwt'))
@Controller('pokemon')
export class PokemonController {
  constructor(private readonly pokemonService: PokemonService) {}

  @Post('/create')
  createPokemon() {
    console.log('helllo');
    return this.pokemonService.createPokemon();
  }
}
