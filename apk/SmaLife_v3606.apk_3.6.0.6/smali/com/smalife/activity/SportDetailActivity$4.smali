.class Lcom/smalife/activity/SportDetailActivity$4;
.super Ljava/lang/Object;
.source "SportDetailActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smalife/activity/SportDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/smalife/db/entity/SportEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smalife/activity/SportDetailActivity;


# direct methods
.method constructor <init>(Lcom/smalife/activity/SportDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smalife/activity/SportDetailActivity$4;->this$0:Lcom/smalife/activity/SportDetailActivity;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/smalife/db/entity/SportEntity;Lcom/smalife/db/entity/SportEntity;)I
    .locals 8
    .param p1, "pre"    # Lcom/smalife/db/entity/SportEntity;
    .param p2, "next"    # Lcom/smalife/db/entity/SportEntity;

    .prologue
    const/4 v3, -0x1

    .line 443
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    .line 444
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 443
    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 445
    .local v0, "df":Ljava/text/DateFormat;
    invoke-virtual {p2}, Lcom/smalife/db/entity/SportEntity;->getCountDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 446
    .local v1, "dt_1":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getCountDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 447
    .local v2, "dt_2":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 448
    const/4 v3, 0x1

    .line 457
    .end local v0    # "df":Ljava/text/DateFormat;
    .end local v1    # "dt_1":Ljava/util/Date;
    .end local v2    # "dt_2":Ljava/util/Date;
    :cond_0
    :goto_0
    return v3

    .line 449
    .restart local v0    # "df":Ljava/text/DateFormat;
    .restart local v1    # "dt_1":Ljava/util/Date;
    .restart local v2    # "dt_2":Ljava/util/Date;
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 452
    invoke-virtual {p2}, Lcom/smalife/db/entity/SportEntity;->getSteps()I

    move-result v4

    invoke-virtual {p1}, Lcom/smalife/db/entity/SportEntity;->getSteps()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    sub-int v3, v4, v3

    goto :goto_0

    .line 454
    .end local v0    # "df":Ljava/text/DateFormat;
    .end local v1    # "dt_1":Ljava/util/Date;
    .end local v2    # "dt_2":Ljava/util/Date;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/smalife/db/entity/SportEntity;

    check-cast p2, Lcom/smalife/db/entity/SportEntity;

    invoke-virtual {p0, p1, p2}, Lcom/smalife/activity/SportDetailActivity$4;->compare(Lcom/smalife/db/entity/SportEntity;Lcom/smalife/db/entity/SportEntity;)I

    move-result v0

    return v0
.end method
