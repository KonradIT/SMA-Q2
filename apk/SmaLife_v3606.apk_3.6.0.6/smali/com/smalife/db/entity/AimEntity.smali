.class public Lcom/smalife/db/entity/AimEntity;
.super Ljava/lang/Object;
.source "AimEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static account:Ljava/lang/String; = null

.field public static calories:F = 0.0f

.field public static distance:F = 0.0f

.field public static id:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L

.field public static sleeplong:F

.field public static steps:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/smalife/db/entity/AimEntity;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getCalories()F
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/smalife/db/entity/AimEntity;->calories:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/smalife/db/entity/AimEntity;->distance:F

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/smalife/db/entity/AimEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialVersionUID()J
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getSleeplong()F
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/smalife/db/entity/AimEntity;->sleeplong:F

    return v0
.end method

.method public getSteps()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/smalife/db/entity/AimEntity;->steps:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "account"    # Ljava/lang/String;

    .prologue
    .line 27
    sput-object p1, Lcom/smalife/db/entity/AimEntity;->account:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setCalories(F)V
    .locals 0
    .param p1, "calories"    # F

    .prologue
    .line 51
    sput p1, Lcom/smalife/db/entity/AimEntity;->calories:F

    .line 52
    return-void
.end method

.method public setDistance(F)V
    .locals 0
    .param p1, "distance"    # F

    .prologue
    .line 43
    sput p1, Lcom/smalife/db/entity/AimEntity;->distance:F

    .line 44
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 35
    sput-object p1, Lcom/smalife/db/entity/AimEntity;->id:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setSleeplong(F)V
    .locals 0
    .param p1, "sleeplong"    # F

    .prologue
    .line 67
    sput p1, Lcom/smalife/db/entity/AimEntity;->sleeplong:F

    .line 68
    return-void
.end method

.method public setSteps(I)V
    .locals 0
    .param p1, "steps"    # I

    .prologue
    .line 59
    sput p1, Lcom/smalife/db/entity/AimEntity;->steps:I

    .line 60
    return-void
.end method
