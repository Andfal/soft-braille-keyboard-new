.class Lcom/nirenr/talkman/settings/TimerRun$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nirenr/talkman/settings/TimerRun;->f(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:I

.field final synthetic e:Lcom/nirenr/talkman/settings/TimerRun;


# direct methods
.method constructor <init>(Lcom/nirenr/talkman/settings/TimerRun;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 0

    iput-object p1, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->e:Lcom/nirenr/talkman/settings/TimerRun;

    iput-object p2, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->a:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->c:Landroid/widget/TextView;

    iput p5, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget p2, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->d:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    const/4 v4, 0x3

    const-string v5, "%s:%s %s"

    if-ne p2, v3, :cond_0

    :try_start_1
    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->e:Lcom/nirenr/talkman/settings/TimerRun;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/TimerRun;->a(Lcom/nirenr/talkman/settings/TimerRun;)Lorg/json/JSONArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->e:Lcom/nirenr/talkman/settings/TimerRun;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/TimerRun;->b(Lcom/nirenr/talkman/settings/TimerRun;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, p2, v0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {v5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->e:Lcom/nirenr/talkman/settings/TimerRun;

    invoke-static {p2}, Lcom/nirenr/talkman/settings/TimerRun;->a(Lcom/nirenr/talkman/settings/TimerRun;)Lorg/json/JSONArray;

    move-result-object p2

    iget v3, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->d:I

    invoke-virtual {p2, v3, p1}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->e:Lcom/nirenr/talkman/settings/TimerRun;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/TimerRun;->b(Lcom/nirenr/talkman/settings/TimerRun;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->d:I

    invoke-virtual {p1, p2}, Landroid/widget/ArrayListAdapter;->remove(I)V

    iget-object p1, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->e:Lcom/nirenr/talkman/settings/TimerRun;

    invoke-static {p1}, Lcom/nirenr/talkman/settings/TimerRun;->b(Lcom/nirenr/talkman/settings/TimerRun;)Landroid/widget/ArrayListAdapter;

    move-result-object p1

    iget p2, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->d:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/widget/ArrayListAdapter;->insert(ILjava/lang/Object;)V

    const-string p1, "lua"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TimerRun:add "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nirenr/talkman/settings/TimerRun$4;->e:Lcom/nirenr/talkman/settings/TimerRun;

    invoke-static {v0}, Lcom/nirenr/talkman/settings/TimerRun;->a(Lcom/nirenr/talkman/settings/TimerRun;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
