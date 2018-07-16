.class public abstract enum Lorg/android/agoo/a$a;
.super Ljava/lang/Enum;
.source "AgooSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/agoo/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/agoo/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/android/agoo/a$a;

.field public static final enum b:Lorg/android/agoo/a$a;

.field public static final enum c:Lorg/android/agoo/a$a;

.field public static final enum d:Lorg/android/agoo/a$a;

.field public static final enum e:Lorg/android/agoo/a$a;

.field private static final synthetic g:[Lorg/android/agoo/a$a;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 548
    new-instance v0, Lorg/android/agoo/a$a$1;

    const-string v1, "TEST_SINGLE"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v3, v2}, Lorg/android/agoo/a$a$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/a$a;->a:Lorg/android/agoo/a$a;

    .line 569
    new-instance v0, Lorg/android/agoo/a$a$2;

    const-string v1, "TEST"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/android/agoo/a$a$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/a$a;->b:Lorg/android/agoo/a$a;

    .line 591
    new-instance v0, Lorg/android/agoo/a$a$3;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v5, v3}, Lorg/android/agoo/a$a$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/a$a;->c:Lorg/android/agoo/a$a;

    .line 613
    new-instance v0, Lorg/android/agoo/a$a$4;

    const-string v1, "TAOBAO"

    invoke-direct {v0, v1, v6, v5}, Lorg/android/agoo/a$a$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/a$a;->d:Lorg/android/agoo/a$a;

    .line 634
    new-instance v0, Lorg/android/agoo/a$a$5;

    const-string v1, "RELEASE"

    invoke-direct {v0, v1, v7, v4}, Lorg/android/agoo/a$a$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/agoo/a$a;->e:Lorg/android/agoo/a$a;

    .line 547
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/android/agoo/a$a;

    sget-object v1, Lorg/android/agoo/a$a;->a:Lorg/android/agoo/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lorg/android/agoo/a$a;->b:Lorg/android/agoo/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lorg/android/agoo/a$a;->c:Lorg/android/agoo/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lorg/android/agoo/a$a;->d:Lorg/android/agoo/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lorg/android/agoo/a$a;->e:Lorg/android/agoo/a$a;

    aput-object v1, v0, v7

    sput-object v0, Lorg/android/agoo/a$a;->g:[Lorg/android/agoo/a$a;

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
    .line 657
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 658
    iput p3, p0, Lorg/android/agoo/a$a;->f:I

    .line 659
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILorg/android/agoo/a$1;)V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0, p1, p2, p3}, Lorg/android/agoo/a$a;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/agoo/a$a;
    .locals 1

    .prologue
    .line 547
    const-class v0, Lorg/android/agoo/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/a$a;

    return-object v0
.end method

.method public static values()[Lorg/android/agoo/a$a;
    .locals 1

    .prologue
    .line 547
    sget-object v0, Lorg/android/agoo/a$a;->g:[Lorg/android/agoo/a$a;

    invoke-virtual {v0}, [Lorg/android/agoo/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/agoo/a$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lorg/android/agoo/a$a;->f:I

    return v0
.end method

.method public abstract b()I
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method
