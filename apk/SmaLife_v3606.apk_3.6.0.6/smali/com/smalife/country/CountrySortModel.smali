.class public Lcom/smalife/country/CountrySortModel;
.super Lcom/smalife/country/CountryModel;
.source "CountrySortModel.java"


# instance fields
.field public sortLetters:Ljava/lang/String;

.field public sortToken:Lcom/smalife/country/CountrySortToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "countrySortKey"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/smalife/country/CountryModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lcom/smalife/country/CountrySortToken;

    invoke-direct {v0}, Lcom/smalife/country/CountrySortToken;-><init>()V

    iput-object v0, p0, Lcom/smalife/country/CountrySortModel;->sortToken:Lcom/smalife/country/CountrySortToken;

    .line 35
    return-void
.end method
