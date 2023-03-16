-- CreateEnum
CREATE TYPE "ProductCategory" AS ENUM ('BOX', 'CARD', 'OTHER');

-- CreateEnum
CREATE TYPE "RarelyKind" AS ENUM ('SR', 'SAR', 'UR', 'AR', 'RRR', 'RR', 'R', 'U', 'C', 'HR', 'CHR', 'CSR', 'SSR', 'S', 'A', 'K', 'TR', 'PR', 'H', 'Mirror', 'P');

-- CreateTable
CREATE TABLE "Pokemon" (
    "id" SERIAL NOT NULL,
    "cardRushId" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "price" INTEGER NOT NULL,
    "category" "ProductCategory" NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Pokemon_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Correction" (
    "id" SERIAL NOT NULL,
    "userId" INTEGER NOT NULL,
    "price" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Correction_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Rarely" (
    "id" SERIAL NOT NULL,
    "kind" "RarelyKind" NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Rarely_pkey" PRIMARY KEY ("id")
);
