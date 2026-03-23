.class Lcom/nirenr/talkman/settings/LanguageSetting$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/LanguageSetting;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/LanguageSetting;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/LanguageSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$5;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$5;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/LanguageSetting;->g(Lcom/nirenr/talkman/settings/LanguageSetting;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$5;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/nirenr/talkman/settings/LanguageSetting;->d(Lcom/nirenr/talkman/settings/LanguageSetting;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$5;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-static {p1, p2}, Lcom/nirenr/talkman/settings/LanguageSetting;->e(Lcom/nirenr/talkman/settings/LanguageSetting;Z)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$5;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    const v0, 0x7f07059d

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/LanguageSetting$5;->a:Lcom/nirenr/talkman/settings/LanguageSetting;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
