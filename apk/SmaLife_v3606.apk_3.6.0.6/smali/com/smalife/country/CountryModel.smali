.class public Lcom/smalife/country/CountryModel;
.super Ljava/lang/Object;
.source "CountryModel.java"


# instance fields
.field public contactPhoto:Landroid/graphics/drawable/Drawable;

.field public countryName:Ljava/lang/String;

.field public countryNumber:Ljava/lang/String;

.field public countrySortKey:Ljava/lang/String;

.field public simpleCountryNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "countryName"    # Ljava/lang/String;
    .param p2, "countryNumber"    # Ljava/lang/String;
    .param p3, "countrySortKey"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/smalife/country/CountryModel;->countryName:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/smalife/country/CountryModel;->countryNumber:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/smalife/country/CountryModel;->countrySortKey:Ljava/lang/String;

    .line 48
    if-eqz p2, :cond_0

    .line 50
    const-string v0, "\\-|\\s"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smalife/country/CountryModel;->simpleCountryNumber:Ljava/lang/String;

    .line 52
    :cond_0
    return-void
.end method
