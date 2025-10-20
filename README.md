# Your Project Name 🚀

Automated dbt pipeline with GitHub Actions.

## Status

[![Run dbt Pipeline](https://github.com/YOUR_USERNAME/your-project-name/actions/workflows/dbt-run.yml/badge.svg)](https://github.com/YOUR_USERNAME/your-project-name/actions/workflows/dbt-run.yml)

## ⚡ Quick Actions

### Run Now (Manual Override)

Need to refresh data immediately? Click here:

**[▶️ Run Pipeline Now](https://github.com/neilpunjani/dbt_test/actions/workflows/dbt-run.yml)**

This will trigger an immediate run, regardless of the schedule.

---

## 📅 Automated Schedule

The pipeline runs automatically:

| Trigger | Schedule | Next Run |
|---------|----------|----------|
| Daily Refresh | 6:00 AM UTC (2:00 AM EST) | Check [Actions](https://github.com/YOUR_USERNAME/your-project-name/actions) |
| Evening Refresh | 6:00 PM UTC (2:00 PM EST) | Check [Actions](https://github.com/YOUR_USERNAME/your-project-name/actions) |

**Schedule is always active** - no need to manually trigger unless you need immediate results.

### When Does It Run?
```
Daily at 6:00 AM UTC  →  Tables refresh automatically
Daily at 6:00 PM UTC  →  Tables refresh automatically
On every push to main →  Tables refresh automatically
Manual button click   →  Tables refresh immediately
```

### Modify Schedule

To change when the pipeline runs automatically:

1. Edit `.github/workflows/dbt-run.yml`
2. Update the cron schedule:
```yaml
   schedule:
     - cron: '0 6 * * *'   # Change this line
```
3. Commit and push changes

**Use [crontab.guru](https://crontab.guru/) to generate cron expressions**

---

## 🎛️ Run Triggers

The pipeline can be triggered three ways:

### 1. Automatic Schedule ⏰
- Runs at 6 AM and 6 PM UTC daily
- No action needed from you
- Check history in [Actions tab](https://github.com/YOUR_USERNAME/your-project-name/actions)

### 2. Manual Button 👆
- Click [▶️ Run Pipeline Now](https://github.com/YOUR_USERNAME/your-project-name/actions/workflows/dbt-run.yml)
- Use when you need immediate refresh
- Doesn't affect scheduled runs

### 3. On Code Push 📝
- Automatically runs when you push to `main`
- Tests your changes immediately
- Ensures production is updated

---

## 📊 View Run History

See all past and scheduled runs:

**[📈 View All Runs](https://github.com/YOUR_USERNAME/your-project-name/actions/workflows/dbt-run.yml)**

This shows:
- ✅ Successful runs (green)
- ❌ Failed runs (red)
- ⏳ Currently running (yellow)
- 🕐 Scheduled future runs

---

## ⚙️ Enable/Disable Schedule

### To Temporarily Disable Schedule:

1. Go to [Actions](https://github.com/YOUR_USERNAME/your-project-name/actions)
2. Click "Run dbt Pipeline" (left sidebar)
3. Click "..." (three dots menu, top right)
4. Click "Disable workflow"

**Manual button will still work!**

### To Re-enable:

1. Go to [Actions](https://github.com/YOUR_USERNAME/your-project-name/actions)
2. Click "Run dbt Pipeline"
3. Click "Enable workflow"

---

## 🔔 Get Notifications

Want to know when runs succeed or fail?

### Email Notifications:

1. Go to GitHub Settings → Notifications
2. Under "Actions", enable:
   - ✅ Send notifications for failed workflows

### Slack Notifications:

Add to `.github/workflows/dbt-run.yml`:
```yaml
- name: Notify Slack on Failure
  if: failure()
  uses: 8398a7/action-slack@v3
  with:
    status: ${{ job.status }}
    text: 'dbt Pipeline Failed! Check logs.'
    webhook_url: ${{ secrets.SLACK_WEBHOOK }}
```

---

## 📋 Models

Current dbt models:
- `my_first_model` - Description
- `customer_summary` - Description
- Add more as you build

---

## 🛠️ Making Changes

### Development Workflow:
```bash
# 1. Pull latest
git pull

# 2. Edit models locally
# Edit files in models/

# 3. Test locally
dbt run --select model_name

# 4. Commit and push
git add .
git commit -m "Your change description"
git push

# 5. Workflow runs automatically!
# Or click manual button for immediate run
```

---

## ⏱️ Time Zones

Schedule runs in **UTC time**. Convert to your timezone:

| Location | UTC | Your Local Time |
|----------|-----|-----------------|
| 6:00 AM UTC | → | 2:00 AM EST |
| 6:00 PM UTC | → | 2:00 PM EST |
| 6:00 AM UTC | → | 11:00 PM PST (previous day) |
| 6:00 PM UTC | → | 11:00 AM PST |

Use this [Time Zone Converter](https://www.timeanddate.com/worldclock/converter.html)

---

## 📞 Support

- [dbt Documentation](https://docs.getdbt.com/)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Cron Expression Generator](https://crontab.guru/)

---

**Last Updated:** 2025-01-20
