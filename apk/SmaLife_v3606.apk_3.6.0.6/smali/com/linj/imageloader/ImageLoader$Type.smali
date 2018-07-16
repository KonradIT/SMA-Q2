.class public final enum Lcom/linj/imageloader/ImageLoader$Type;
.super Ljava/lang/Enum;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linj/imageloader/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/linj/imageloader/ImageLoader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/linj/imageloader/ImageLoader$Type;

.field public static final enum FIFO:Lcom/linj/imageloader/ImageLoader$Type;

.field public static final enum LIFO:Lcom/linj/imageloader/ImageLoader$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/linj/imageloader/ImageLoader$Type;

    const-string v1, "FIFO"

    invoke-direct {v0, v1, v2}, Lcom/linj/imageloader/ImageLoader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linj/imageloader/ImageLoader$Type;->FIFO:Lcom/linj/imageloader/ImageLoader$Type;

    new-instance v0, Lcom/linj/imageloader/ImageLoader$Type;

    const-string v1, "LIFO"

    invoke-direct {v0, v1, v3}, Lcom/linj/imageloader/ImageLoader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linj/imageloader/ImageLoader$Type;->LIFO:Lcom/linj/imageloader/ImageLoader$Type;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/linj/imageloader/ImageLoader$Type;

    sget-object v1, Lcom/linj/imageloader/ImageLoader$Type;->FIFO:Lcom/linj/imageloader/ImageLoader$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/linj/imageloader/ImageLoader$Type;->LIFO:Lcom/linj/imageloader/ImageLoader$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/linj/imageloader/ImageLoader$Type;->ENUM$VALUES:[Lcom/linj/imageloader/ImageLoader$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linj/imageloader/ImageLoader$Type;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/linj/imageloader/ImageLoader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/linj/imageloader/ImageLoader$Type;

    return-object v0
.end method

.method public static values()[Lcom/linj/imageloader/ImageLoader$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/linj/imageloader/ImageLoader$Type;->ENUM$VALUES:[Lcom/linj/imageloader/ImageLoader$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/linj/imageloader/ImageLoader$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
