import { Module } from '@nestjs/common';
import { PrismaModule } from 'src/prisma/prisma.module';
import { PokemonController } from './Pokemon.controller';
import { PokemonService } from './Pokemon.service';

@Module({
  imports: [PrismaModule],
  controllers: [PokemonController],
  providers: [PokemonService],
})
export class PokemonModule {}
