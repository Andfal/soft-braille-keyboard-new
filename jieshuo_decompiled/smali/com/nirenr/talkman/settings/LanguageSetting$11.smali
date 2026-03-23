.class Lcom/nirenr/talkman/settings/LanguageSetting$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/LanguageSetting;->i(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nirenr/talkman/settings/LanguageSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/LanguageSetting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$11;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/LanguageSetting$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$11;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/nirenr/talkman/o;->h(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/LanguageSetting$11;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p2, p1}, Lcom/androlua/LuaResources;->save(Landroid/content/Context;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$11;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p1}, Lcom/androlua/LuaResources;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/androlua/LuaResources;->clear()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$11;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-virtual {p1}, Landroid/app/BaseActivity;->getSuperResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/androlua/LuaResources;->init(Landroid/content/Context;Landroid/content/res/Resources;)V

    invoke-static {}, Lcom/androlua/LuaApplication;->getInstance()Lcom/androlua/LuaApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/androlua/LuaApplication;->updateAllActivity()V

    :cond_0
    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$11;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$11;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f0703eb

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$11;->b:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    return-void
.end method
