.class public final enum Lcom/smalife/utils/FileHelper$FileType;
.super Ljava/lang/Enum;
.source "FileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/utils/FileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/smalife/utils/FileHelper$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/smalife/utils/FileHelper$FileType;

.field public static final enum Image:Lcom/smalife/utils/FileHelper$FileType;

.field public static final enum JSON:Lcom/smalife/utils/FileHelper$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    new-instance v0, Lcom/smalife/utils/FileHelper$FileType;

    const-string v1, "Image"

    invoke-direct {v0, v1, v2}, Lcom/smalife/utils/FileHelper$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smalife/utils/FileHelper$FileType;->Image:Lcom/smalife/utils/FileHelper$FileType;

    new-instance v0, Lcom/smalife/utils/FileHelper$FileType;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v3}, Lcom/smalife/utils/FileHelper$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/smalife/utils/FileHelper$FileType;->JSON:Lcom/smalife/utils/FileHelper$FileType;

    .line 206
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/smalife/utils/FileHelper$FileType;

    sget-object v1, Lcom/smalife/utils/FileHelper$FileType;->Image:Lcom/smalife/utils/FileHelper$FileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/smalife/utils/FileHelper$FileType;->JSON:Lcom/smalife/utils/FileHelper$FileType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/smalife/utils/FileHelper$FileType;->ENUM$VALUES:[Lcom/smalife/utils/FileHelper$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smalife/utils/FileHelper$FileType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/smalife/utils/FileHelper$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/smalife/utils/FileHelper$FileType;

    return-object v0
.end method

.method public static values()[Lcom/smalife/utils/FileHelper$FileType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/smalife/utils/FileHelper$FileType;->ENUM$VALUES:[Lcom/smalife/utils/FileHelper$FileType;

    array-length v1, v0

    new-array v2, v1, [Lcom/smalife/utils/FileHelper$FileType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
