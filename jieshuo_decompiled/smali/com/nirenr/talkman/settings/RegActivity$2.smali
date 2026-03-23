.class Lcom/nirenr/talkman/settings/RegActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/RegActivity;->onDone(Lcom/nirenr/talkman/util/HttpUtil$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nirenr/talkman/settings/RegActivity;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/RegActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/RegActivity$2;->a:Lcom/nirenr/talkman/settings/RegActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/nirenr/talkman/settings/RegActivity$2;->a:Lcom/nirenr/talkman/settings/RegActivity;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/RegActivity;->c(Lcom/nirenr/talkman/settings/RegActivity;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/nirenr/talkman/settings/RegActivity$2;->a:Lcom/nirenr/talkman/settings/RegActivity;

    const v0, 0x7f0708a1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity$2;->a:Lcom/nirenr/talkman/settings/RegActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/RegActivity;->b(Lcom/nirenr/talkman/settings/RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/RegActivity$2;->a:Lcom/nirenr/talkman/settings/RegActivity;

    const v0, 0x7f0708a4

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity$2;->a:Lcom/nirenr/talkman/settings/RegActivity;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/RegActivity;->a(Lcom/nirenr/talkman/settings/RegActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/RegActivity$2;->a:Lcom/nirenr/talkman/settings/RegActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/RegActivity$2;->a:Lcom/nirenr/talkman/settings/RegActivity;

    const-class v1, Lcom/nirenr/talkman/settings/LoginActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/RegActivity$2;->a:Lcom/nirenr/talkman/settings/RegActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
