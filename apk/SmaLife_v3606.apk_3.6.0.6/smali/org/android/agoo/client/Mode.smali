.class public final enum Lorg/android/agoo/client/Mode;
.super Ljava/lang/Enum;
.source "Mode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/client/Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/android/agoo/client/Mode;

.field public static final enum PREVIEW:Lorg/android/agoo/client/Mode;

.field public static final enum RELEASE:Lorg/android/agoo/client/Mode;

.field public static final enum TAOBAO:Lorg/android/agoo/client/Mode;

.field public static final enum TEST:Lorg/android/agoo/client/Mode;

.field public static final enum TEST_SINGLE:Lorg/android/agoo/client/Mode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lorg/android/agoo/client/Mode;

    const-string v1, "TEST_SINGLE"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/android/agoo/client/Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/client/Mode;->TEST_SINGLE:Lorg/android/agoo/client/Mode;

    .line 6
    new-instance v0, Lorg/android/agoo/client/Mode;

    const-string v1, "TEST"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/android/agoo/client/Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/client/Mode;->TEST:Lorg/android/agoo/client/Mode;

    .line 7
    new-instance v0, Lorg/android/agoo/client/Mode;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v5, v3}, Lorg/android/agoo/client/Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/client/Mode;->PREVIEW:Lorg/android/agoo/client/Mode;

    .line 8
    new-instance v0, Lorg/android/agoo/client/Mode;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v6, v4}, Lorg/android/agoo/client/Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/client/Mode;->RELEASE:Lorg/android/agoo/client/Mode;

    .line 9
    new-instance v0, Lorg/android/agoo/client/Mode;

    const-string v1, "TAOBAO"

    invoke-direct {v0, v1, v7, v5}, Lorg/android/agoo/client/Mode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/client/Mode;->TAOBAO:Lorg/android/agoo/client/Mode;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/android/agoo/client/Mode;

    sget-object v1, Lorg/android/agoo/client/Mode;->TEST_SINGLE:Lorg/android/agoo/client/Mode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/android/agoo/client/Mode;->TEST:Lorg/android/agoo/client/Mode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/android/agoo/client/Mode;->PREVIEW:Lorg/android/agoo/client/Mode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/android/agoo/client/Mode;->RELEASE:Lorg/android/agoo/client/Mode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/android/agoo/client/Mode;->TAOBAO:Lorg/android/agoo/client/Mode;

    aput-object v1, v0, v7

    sput-object v0, Lorg/android/agoo/client/Mode;->$VALUES:[Lorg/android/agoo/client/Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lorg/android/agoo/client/Mode;->value:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/client/Mode;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lorg/android/agoo/client/Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/client/Mode;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/client/Mode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lorg/android/agoo/client/Mode;->$VALUES:[Lorg/android/agoo/client/Mode;

    invoke-virtual {v0}, [Lorg/android/agoo/client/Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/client/Mode;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lorg/android/agoo/client/Mode;->value:I

    return v0
.end method
