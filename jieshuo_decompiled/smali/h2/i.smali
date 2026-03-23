.class public Lh2/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/AlertDialog;III)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public static b(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    const/16 v1, 0x7f0

    goto :goto_0

    :cond_2
    const/16 v1, 0x7da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-object p0
.end method

.method public static c(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ContextThemeWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_2

    const/16 v1, 0x7f0

    goto :goto_0

    :cond_2
    const/16 v1, 0x7da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-object p0
.end method
