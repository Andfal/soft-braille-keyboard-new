.class public Lcom/nirenr/talkman/WebActivity;
.super Landroid/app/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/androlua/LuaWebView;

.field private b:Z

.field private c:Landroid/view/MenuItem;

.field private d:Z

.field private e:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/BaseActivity;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lcom/nirenr/talkman/WebActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/WebActivity;->b:Z

    return p0
.end method

.method static bridge synthetic b(Lcom/nirenr/talkman/WebActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nirenr/talkman/WebActivity;->d:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/nirenr/talkman/WebActivity;)Lcom/androlua/LuaWebView;
    .locals 0

    iget-object p0, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_0

    const-string v1, "label"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lcom/nirenr/talkman/WebActivity;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/WebActivity;->b:Z

    iget-object v1, p0, Lcom/nirenr/talkman/WebActivity;->c:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-boolean v0, p0, Lcom/nirenr/talkman/WebActivity;->d:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/nirenr/talkman/WebActivity;->d:Z

    iget-object v1, p0, Lcom/nirenr/talkman/WebActivity;->e:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lcom/androlua/LuaWebView;

    invoke-direct {v0, p0}, Lcom/androlua/LuaWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    invoke-virtual {v0, p1}, Lcom/androlua/LuaWebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x1080038

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    const v0, 0x7f07026b

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    new-instance v0, Lcom/nirenr/talkman/WebActivity$a;

    invoke-direct {v0, p0}, Lcom/nirenr/talkman/WebActivity$a;-><init>(Lcom/nirenr/talkman/WebActivity;)V

    invoke-virtual {p1, v0}, Lcom/androlua/LuaWebView;->setAdsFilter(Lcom/androlua/LuaWebView$AdsFilter;)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const v0, 0x7f07097a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const v0, 0x7f070981

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const v0, 0x7f070980

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const v0, 0x7f07097f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const v0, 0x7f07097b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x5

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/nirenr/talkman/WebActivity;->b:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/WebActivity;->c:Landroid/view/MenuItem;

    const v0, 0x7f07052a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nirenr/talkman/WebActivity;->d:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/nirenr/talkman/WebActivity;->e:Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    invoke-virtual {v0}, Lcom/androlua/LuaWebView;->destroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/nirenr/talkman/WebActivity;->f()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/nirenr/talkman/WebActivity;->e()V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/nirenr/talkman/TalkManAccessibilityService;->getInstance()Lcom/nirenr/talkman/TalkManAccessibilityService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nirenr/talkman/TalkManAccessibilityService;->copy(Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nirenr/talkman/WebActivity;->d(Ljava/lang/String;)V

    :goto_0
    const v0, 0x7f070374

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :pswitch_3
    new-instance v0, Lcom/nirenr/talkman/dialog/EditDialog;

    const v1, 0x7f07097f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nirenr/talkman/WebActivity$b;

    invoke-direct {v3, p0}, Lcom/nirenr/talkman/WebActivity$b;-><init>(Lcom/nirenr/talkman/WebActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/nirenr/talkman/dialog/EditDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/nirenr/talkman/dialog/EditDialog$EditDialogCallback;)V

    invoke-virtual {v0}, Lcom/nirenr/talkman/dialog/EditDialog;->g()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/nirenr/talkman/WebActivity;->a:Lcom/androlua/LuaWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/BaseActivity;->onResume()V

    return-void
.end method
