.class public Lcom/smalife/entity/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private app_icon:Landroid/graphics/drawable/Drawable;

.field private app_name:Ljava/lang/String;

.field private packagename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "app_icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "app_name"    # Ljava/lang/String;
    .param p3, "app_version"    # Ljava/lang/String;
    .param p4, "packagename"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/smalife/entity/AppInfo;->app_icon:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object p2, p0, Lcom/smalife/entity/AppInfo;->app_name:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/smalife/entity/AppInfo;->packagename:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public getApp_icon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smalife/entity/AppInfo;->app_icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getApp_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/smalife/entity/AppInfo;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackagename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/entity/AppInfo;->packagename:Ljava/lang/String;

    return-object v0
.end method

.method public setApp_icon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "app_icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/smalife/entity/AppInfo;->app_icon:Landroid/graphics/drawable/Drawable;

    .line 34
    return-void
.end method

.method public setApp_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "app_name"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/smalife/entity/AppInfo;->app_name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPackagename(Ljava/lang/String;)V
    .locals 0
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/smalife/entity/AppInfo;->packagename:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppInfo [app_icon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/smalife/entity/AppInfo;->app_icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smalife/entity/AppInfo;->app_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 51
    const-string v1, ", packagename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/smalife/entity/AppInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
