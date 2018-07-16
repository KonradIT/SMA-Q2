.class public Lcom/smalife/country/CountrySortToken;
.super Ljava/lang/Object;
.source "CountrySortToken.java"


# instance fields
.field public chName:Ljava/lang/String;

.field public simpleSpell:Ljava/lang/String;

.field public wholeSpell:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/country/CountrySortToken;->simpleSpell:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/country/CountrySortToken;->wholeSpell:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/smalife/country/CountrySortToken;->chName:Ljava/lang/String;

    .line 24
    return-void
.end method
