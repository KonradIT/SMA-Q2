.class public Lcom/smalife/activity/HeartDetailsActivity;
.super Lcom/smalife/BaseActivity;
.source "HeartDetailsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;,
        Lcom/smalife/activity/HeartDetailsActivity$ListEntity;,
        Lcom/smalife/activity/HeartDetailsActivity$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smalife/BaseActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# static fields
.field public static final LATEST_HEART_VALUE:Ljava/lang/String; = "LATEST_HEART_VALUE"


# instance fields
.field private adapter:Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;

.field private addImgView:Landroid/widget/ImageView;

.field private application:Lcom/smalife/MyApplication;

.field private back_btn:Landroid/widget/ImageButton;

.field private currentPosition:I

.field private deleteItem:Z

.field private heartDetailsListView:Landroid/widget/ListView;

.field private listDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smalife/activity/HeartDetailsActivity$ListEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/smalife/BaseActivity;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->deleteItem:Z

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smalife/activity/HeartDetailsActivity;)Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->deleteItem:Z

    return v0
.end method

.method static synthetic access$2(Lcom/smalife/activity/HeartDetailsActivity;Z)V
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/smalife/activity/HeartDetailsActivity;->deleteItem:Z

    return-void
.end method

.method static synthetic access$3(Lcom/smalife/activity/HeartDetailsActivity;)I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->currentPosition:I

    return v0
.end method

.method static synthetic access$4(Lcom/smalife/activity/HeartDetailsActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->heartDetailsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/smalife/activity/HeartDetailsActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/smalife/activity/HeartDetailsActivity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/smalife/activity/HeartDetailsActivity;)Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->adapter:Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;

    return-object v0
.end method

.method private getCurrentSystemDate()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 224
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 225
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 226
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    .line 227
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    .line 228
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 229
    .local v1, "day":I
    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 230
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 231
    .local v2, "dt":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MM/dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 232
    .local v3, "ft":Ljava/text/DateFormat;
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    sget-object v1, Lcom/smalife/utils/FileHelper$FileType;->JSON:Lcom/smalife/utils/FileHelper$FileType;

    const-string v2, "heartDetails.json"

    invoke-static {p0, v1, v2}, Lcom/smalife/utils/FileHelper;->createFile(Landroid/content/Context;Lcom/smalife/utils/FileHelper$FileType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method private initUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 56
    const v3, 0x7f0e0006

    invoke-virtual {p0, v3}, Lcom/smalife/activity/HeartDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->back_btn:Landroid/widget/ImageButton;

    .line 59
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->back_btn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v3, 0x7f0e009c

    invoke-virtual {p0, v3}, Lcom/smalife/activity/HeartDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->heartDetailsListView:Landroid/widget/ListView;

    .line 62
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 63
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030025

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 64
    .local v1, "headerLayoutView":Landroid/view/View;
    const v3, 0x7f030024

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "footLayoutView":Landroid/view/View;
    const v3, 0x7f0e009d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->addImgView:Landroid/widget/ImageView;

    .line 67
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->addImgView:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->heartDetailsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 70
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->heartDetailsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    .line 73
    new-instance v3, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;

    invoke-direct {v3, p0}, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;-><init>(Lcom/smalife/activity/HeartDetailsActivity;)V

    iput-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->adapter:Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;

    .line 74
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->heartDetailsListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/smalife/activity/HeartDetailsActivity;->adapter:Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->heartDetailsListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->heartDetailsListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 78
    return-void
.end method

.method private showAddDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x400

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 148
    new-instance v5, Landroid/app/Dialog;

    const v0, 0x7f0a0013

    invoke-direct {v5, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 149
    .local v5, "dialog":Landroid/app/Dialog;
    invoke-virtual {v5, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 150
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 153
    const v0, 0x7f03001c

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 154
    const v0, 0x7f0e0081

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 155
    .local v4, "tvDate":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v0, 0x7f0e0082

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 158
    .local v2, "heartValue":Landroid/widget/EditText;
    const v0, 0x7f0e0083

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 159
    .local v6, "cancel":Landroid/widget/TextView;
    const v0, 0x7f0e0084

    invoke-virtual {v5, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 161
    .local v7, "confirm":Landroid/widget/TextView;
    iget-boolean v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->deleteItem:Z

    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 164
    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 165
    const v0, 0x7f090142

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :cond_0
    :goto_0
    new-instance v0, Lcom/smalife/activity/HeartDetailsActivity$2;

    invoke-direct {v0, p0, v5}, Lcom/smalife/activity/HeartDetailsActivity$2;-><init>(Lcom/smalife/activity/HeartDetailsActivity;Landroid/app/Dialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    new-instance v0, Lcom/smalife/activity/HeartDetailsActivity$3;

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/smalife/activity/HeartDetailsActivity$3;-><init>(Lcom/smalife/activity/HeartDetailsActivity;Landroid/widget/EditText;Ljava/lang/String;Landroid/widget/TextView;Landroid/app/Dialog;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 215
    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 216
    return-void

    .line 167
    :cond_1
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 170
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 171
    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onBackPressed()V

    .line 115
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/smalife/activity/HeartDetailsActivity;->application:Lcom/smalife/MyApplication;

    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;

    invoke-virtual {v0}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smalife/MyApplication;->editLatestHeartValue(Ljava/lang/String;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onClick(Landroid/view/View;)V

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 110
    :goto_0
    :sswitch_0
    return-void

    .line 99
    :sswitch_1
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/smalife/activity/HeartDetailsActivity;->application:Lcom/smalife/MyApplication;

    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;

    invoke-virtual {v0}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smalife/MyApplication;->editLatestHeartValue(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailsActivity;->finish()V

    goto :goto_0

    .line 105
    :sswitch_2
    invoke-direct {p0}, Lcom/smalife/activity/HeartDetailsActivity;->getCurrentSystemDate()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smalife/activity/HeartDetailsActivity;->showAddDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0006 -> :sswitch_1
        0x7f0e000e -> :sswitch_0
        0x7f0e009d -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/smalife/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/smalife/activity/HeartDetailsActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/smalife/activity/HeartDetailsActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/smalife/MyApplication;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->application:Lcom/smalife/MyApplication;

    .line 51
    invoke-direct {p0}, Lcom/smalife/activity/HeartDetailsActivity;->initUI()V

    .line 52
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "root":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gez v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    long-to-int v1, p4

    iput v1, p0, Lcom/smalife/activity/HeartDetailsActivity;->currentPosition:I

    .line 128
    iget-object v1, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->currentPosition:I

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;

    .line 129
    .local v0, "entity":Lcom/smalife/activity/HeartDetailsActivity$ListEntity;
    invoke-virtual {v0}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/smalife/activity/HeartDetailsActivity;->showAddDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "root":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x1

    .line 136
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gez v2, :cond_0

    .line 137
    const/4 v1, 0x0

    .line 144
    :goto_0
    return v1

    .line 140
    :cond_0
    iput-boolean v1, p0, Lcom/smalife/activity/HeartDetailsActivity;->deleteItem:Z

    .line 141
    long-to-int v2, p4

    iput v2, p0, Lcom/smalife/activity/HeartDetailsActivity;->currentPosition:I

    .line 142
    iget-object v2, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    iget-object v3, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/smalife/activity/HeartDetailsActivity;->currentPosition:I

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;

    .line 143
    .local v0, "entity":Lcom/smalife/activity/HeartDetailsActivity$ListEntity;
    invoke-virtual {v0}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smalife/activity/HeartDetailsActivity$ListEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/smalife/activity/HeartDetailsActivity;->showAddDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/smalife/BaseActivity;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/smalife/activity/HeartDetailsActivity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smalife/utils/FileHelper;->getHeartDetailsData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-direct {p0}, Lcom/smalife/activity/HeartDetailsActivity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smalife/utils/FileHelper;->getHeartDetailsData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    new-instance v2, Lcom/smalife/activity/HeartDetailsActivity$1;

    invoke-direct {v2, p0}, Lcom/smalife/activity/HeartDetailsActivity$1;-><init>(Lcom/smalife/activity/HeartDetailsActivity;)V

    .line 86
    invoke-virtual {v2}, Lcom/smalife/activity/HeartDetailsActivity$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->listDatas:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/smalife/activity/HeartDetailsActivity;->adapter:Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;

    invoke-virtual {v0}, Lcom/smalife/activity/HeartDetailsActivity$HeartDetailsAdapter;->notifyDataSetChanged()V

    .line 89
    :cond_0
    return-void
.end method
